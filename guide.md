# A Short Guide to Publication Types in Computer Science

A reference for students and researchers on the different kinds of scholarly output in CS, how they are cited, and how they appear in a BibTeX file.

---

## 1. Journal Articles

A journal article is a full-length, peer-reviewed paper published in a periodical (e.g., *IEEE Transactions on Computers*, *ACM Computing Surveys*, *Journal of Machine Learning Research*). Journals publish on a rolling or issue-based schedule, independent of any event.

**Key traits:**
- Usually the longest and most detailed form of CS writing
- Goes through multiple rounds of peer review
- Cited by journal name, volume, number, and page range

**BibTeX type:** `@article`
**Key fields:** `journal`, `volume`, `number`, `pages`, `year`

**Note on IEEE:** IEEE publishes both journals (e.g., *IEEE Transactions on …*, *IEEE Access*) and conference proceedings. Just because a paper appears on IEEE Xplore does not make it a journal article — check whether the `journal` or `booktitle` field is filled in.

---

## 2. Conference Papers (Proceedings)

A conference paper is presented at an event and published in that event's proceedings. In CS, strong conference papers (e.g., NeurIPS, CVPR, SIGCOMM) carry as much — or more — prestige than many journal articles, unlike in other fields.

**Key traits:**
- Peer-reviewed, usually with a strict page limit
- Tied to a specific event and year
- Published in a proceedings volume (print or digital)

**BibTeX type:** `@inproceedings`
**Key fields:** `booktitle`, `year`, `pages`, `publisher`

**Note:** IEEE and ACM frequently publish conference proceedings. A paper in *Proc. IEEE Intl. Conf. on …* is a conference paper, not a journal article, even though IEEE published it. Be sure to check the official `Cite` link (in BibTex) of the paper.

---

## 3. Workshop Papers

Workshop papers are shorter, exploratory contributions presented at workshops, which are usually co-located with a main conference. They are peer-reviewed but with less stringent standards than full conference papers — making them a good venue for work-in-progress.

**BibTeX type:** `@inproceedings` (same as conference papers; the workshop name goes in `booktitle`)

---

## 4. Book Chapters

A book chapter is a contribution to an edited or co-authored book. In CS, this often means writing one chapter of a textbook, a research handbook, or a compiled volume on a specific topic.

**BibTeX type:** `@incollection` or `@inbook`
**Key fields:** `booktitle` (the book title), `editor`, `chapter`, `pages`, `publisher`

---

## 5. Books and Monographs

A book (or monograph) is a full-length scholarly work authored and published as a standalone volume. This includes textbooks, research monographs, and co-authored books.

**BibTeX type:** `@book`
**Key fields:** `author`, `title`, `publisher`, `year`

Edited books — where an editor compiles chapters from multiple authors — use `@book` with an `editor` field instead of `author`.

---

## 6. Theses and Dissertations

These are major research works submitted to a university for a degree.

| Type | Degree | BibTeX type |
|---|---|---|
| PhD Dissertation | Doctor of Philosophy | `@phdthesis` |
| Master's Thesis | Master of Science / MA | `@mastersthesis` |
| Undergraduate Thesis / Special Problem | Bachelor's degree | `@misc` or `@mastersthesis` with a note |

**Key fields:** `author`, `title`, `school`, `year`

In the Philippine university context (e.g., UPLB ICS), undergraduate *Special Problems* are a standard research output and should be tracked alongside graduate theses.

---

## 7. Technical Reports

A technical report is published directly by a university, research lab, or company — not through a journal or conference. They are often used for preliminary results, detailed proofs, or documentation that does not fit a conference format.

**BibTeX type:** `@techreport`
**Key fields:** `institution`, `number`, `year`

---

## 8. Preprints

A preprint is a version of a paper posted publicly before (or instead of) formal peer review, typically on a preprint server such as arXiv. In CS, arXiv preprints are widely read and cited, especially in machine learning and AI.

**BibTeX type:** `@misc` or `@online`
**Key fields:** `eprint`, `archiveprefix = {arXiv}`, `url`

---

## 9. Posters, Demos, and Extended Abstracts

These are short peer-reviewed submissions presented at a conference in a non-talk format.

- **Posters** — a visual summary presented in a poster session
- **Demo papers** — describe a working system or tool
- **Extended abstracts** — 1–2 page summaries, often for work in progress

These usually appear in the conference proceedings (as `@inproceedings`) but are shorter and held to a different standard than full papers. Use brackets in the title to indicate the type. For example `Title of my Paper [Poster]` 

---

## 10. Other Citable Outputs

CS increasingly counts research artifacts as first-class scholarly outputs:

- **Datasets** — a published, citable dataset with a DOI (e.g., on Zenodo or Figshare). BibTeX type: `@misc` or `@dataset`
- **Software** — a citable software release with a DOI. BibTeX type: `@misc`
- **Patents** — formal intellectual property filings. BibTeX type: `@patent`
- **Standards** — technical standards such as RFCs (IETF) or W3C Recommendations, especially relevant in networking and web research. BibTeX type: `@misc` or `@techreport`

---

## Conference Paper vs. Journal Article: A Quick Summary

This is the most common point of confusion in CS:

| | Conference Paper | Journal Article |
|---|---|---|
| Venue | Event proceedings | Periodic journal |
| Length | Usually shorter (6–12 pages) | Usually longer (10–30+ pages) |
| Review | Single-round, fast | Multi-round, can take months/years |
| BibTeX field | `booktitle` | `journal` |
| BibTeX type | `@inproceedings` | `@article` |
| IEEE example | *Proc. IEEE INFOCOM 2023* | *IEEE Transactions on Networking* |

A paper can be **presented at a conference** and **later extended into a journal version** — both are valid, separate publications. Occasionally a conference partners with a journal so accepted papers appear in a special issue; in that case, the BibTeX entry would be `@article` even though the paper was presented at an event.

---

## BibTeX Quick Reference

| Publication Type | BibTeX Entry |
|---|---|
| Journal article | `@article` |
| Conference / workshop paper | `@inproceedings` |
| Book | `@book` |
| Book chapter | `@incollection` |
| PhD dissertation | `@phdthesis` |
| Master's thesis | `@mastersthesis` |
| Technical report | `@techreport` |
| Preprint, dataset, software, patent, standard | `@misc` |

---

*Guide prepared for ICS UPLB. Based on common CS publishing conventions and BibTeX standard entry types.*
