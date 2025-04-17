import re

text = '''
<answer>[{'action': 'click', 'coordinate': [100, 200]}]</answer> <verify>True</verify>
<answer>[{'action': 'scroll', 'coordinate': [300, 400]}]</answer> <verify>True</verify>
'''
# pattern = r"<answer>\[{'action': '.*?', 'coordinate': \[\d+, \d+\]}\]</answer>\s*<verify>.*?</verify>"
# matches = re.findall(pattern, text, re.DOTALL)
# answer_pattern = r"<answer>"
# answer_matches = re.findall(answer_pattern, text, re.DOTALL)
# pattern_pass = len(matches) == len(answer_matches)
# print(pattern_pass)
# verify_pattern = r"<verify>(.*?)</verify>"
# verify_resultes = re.findall(verify_pattern, text, re.DOTALL)
# # make sure the last verify result is True and there is only one True
# verify_pass = verify_resultes[-1] == 'True' and verify_resultes.count('True') == 1
# print(verify_pass)
reward = 0.0
answer_tag_pattern = r'<answer>.*?</answer>'
all_answers = re.findall(answer_tag_pattern, text, re.DOTALL)
verification_list = re.findall(r"<verify>(.*?)</verify>", text, re.DOTALL)
print(all_answers)
print(verification_list)