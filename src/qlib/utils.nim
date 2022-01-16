import std/[sugar]
import nimqml


proc toQVariants*[T:QObject](list: openArray[T]): seq[QVariant] =
  collect(newSeqOfCap(list.len)):
    for el in list:
      newQVariant(el)

proc delete*[T:QObject|QVariant](list: openArray[T]) =
  for el in list: el.delete