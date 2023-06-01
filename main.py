from handwriting_synthesis.hand import Hand
from handwriting_synthesis.training import train
from handwriting_synthesis.training.preparation import prepare

cho1 = input("press enter to prepare. type 'skip' to skip\n")
print("skipped") if cho1 == "skip" else prepare()

cho2 = input("press enter to train. type 'skip' to skip\n")
print("skipped") if cho1 == "skip" else train()

print("done")
