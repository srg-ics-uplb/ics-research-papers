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

## 11. Indexing Databases

An **indexing database** is a service that collects, organizes, and makes searchable the metadata (and sometimes full text) of scholarly publications. Being indexed is not the same as being peer-reviewed — it is a separate quality signal about a venue's discoverability and standing.

### Why indexing matters

Institutions, funding agencies, and promotion committees often require that a publication appear in a recognized index before it counts toward a researcher's record. In the Philippine context, CHED and many universities explicitly refer to Scopus or ISI-indexed journals in their research productivity criteria.

### Major indexing databases

**Scopus** (Elsevier)
The largest abstract and citation database of peer-reviewed literature. Covers journals, conference proceedings, and book series. Scopus assigns each journal a *CiteScore* and each author an *h-index* based on citations within the database. A venue being "Scopus-indexed" is one of the most commonly cited quality thresholds in Southeast Asian academia.

**Web of Science (WoS) / ISI**
Operated by Clarivate. Older and more selective than Scopus, covering a curated set of high-impact journals. Web of Science assigns *Journal Impact Factor (JIF)* through its *Journal Citation Reports (JCR)* product. "ISI-indexed" is still used colloquially even though the Institute for Scientific Information (ISI) was acquired by Clarivate decades ago.

**DBLP**
The primary bibliographic database specifically for **computer science**. Maintained by Schloss Dagstuhl, it indexes CS conferences and journals comprehensively and is the go-to source for checking whether a CS venue is legitimate and established. If a CS conference or journal is not in DBLP, that is a warning sign.

**ACM Digital Library**
Indexes all publications of the Association for Computing Machinery — a significant subset of CS literature, including conference proceedings and journals.

**IEEE Xplore**
Indexes all IEEE and IET publications — journals, conference proceedings, and standards.

**Google Scholar**
Not a curated index — it crawls the web and indexes nearly everything, including preprints, theses, and grey literature. It is useful for finding work and computing citation counts, but being "on Google Scholar" is not a quality indicator.

**ERIC, PubMed, etc.**
Domain-specific indexes (education, medicine) that may be relevant for interdisciplinary CS work (e.g., CS education research, health informatics).

### Key metrics assigned by indexes

| Metric | Source | What it measures |
|---|---|---|
| Impact Factor (IF / JIF) | Web of Science JCR | Average citations per article over 2 years |
| CiteScore | Scopus | Average citations per document over 4 years |
| SCImago Journal Rank (SJR) | Scopus / SCImago | Weighted citations (prestigious citations count more) |
| h-index | Scopus, WoS, Google Scholar | Author productivity and citation impact |
| SNIP | Scopus | Citation impact relative to the field's citation habits |

These metrics describe journals and authors, not individual papers. A paper in a high-impact journal is not automatically an important paper — and important papers sometimes appear in lower-ranked venues.

---

## 12. Open Access Publishing

**Open access (OA)** means the reader can access the full text of a paper without a subscription or payment. This is increasingly the norm in publicly funded research.

### The three main routes

**Gold open access**
The paper is published in a fully open-access journal from the start. The journal is freely readable by anyone. The cost is typically shifted to the author or their institution via an **Article Processing Charge (APC)**, which can range from a few hundred to several thousand US dollars. Examples: *PLOS ONE*, *PeerJ*, *IEEE Access*, many MDPI journals.

**Green open access (self-archiving)**
The author posts a version of the paper — usually the accepted manuscript, before final typesetting — in an **institutional repository** or a preprint server (e.g., arXiv, the university repository). The journal version may still be behind a paywall. Many subscription journals explicitly permit this under their author agreements.

**Hybrid open access**
A subscription journal offers authors the option to pay an APC to make their individual article freely available within an otherwise paywalled journal. Critics argue this leads to "double dipping" (the institution pays both a subscription fee and an APC).

### Open access and indexing

Open access and indexing are independent properties. A journal can be:
- Indexed and open access (e.g., *IEEE Access* is both Scopus-indexed and gold OA)
- Indexed and paywalled (most traditional IEEE and ACM journals)
- Open access but not well-indexed (many newer OA journals)
- Neither (predatory journals — see below)

### Why it matters for ICS

Research funded by public institutions (like state universities in the Philippines) is increasingly expected to be openly accessible. Knowing whether a target journal is gold OA, hybrid, or green-permissive helps researchers plan publication costs and comply with funder mandates.

---

## 13. Predatory Publishing

A **predatory journal or conference** exploits the open-access fee model by collecting APCs while providing little or no genuine peer review. The term was coined by librarian Jeffrey Beall, whose lists of suspected predatory publishers were widely used until 2017.

### Warning signs of a predatory journal

- Unsolicited email invitation to submit, often with flattery
- Promises of very fast peer review (days, not weeks or months)
- Broad, vague scope claiming to cover "all fields of science"
- Prominent display of Impact Factor claims that are not from JCR/Clarivate
- Not indexed in Scopus, Web of Science, or DBLP
- Poor or copied website design; editorial board members who are fake or who deny membership
- APC payment required before peer review is complete

### Warning signs of a predatory conference

- Unsolicited invitation with urgent deadlines
- Acceptance within days with no substantive review comments
- Generic name mimicking established conferences (e.g., "International Conference on Advanced Science and Technology")
- Proceedings not published by a recognized publisher or indexed in DBLP
- Location changes repeatedly or the event does not actually take place

### How to check a venue

| Tool | What it does |
|---|---|
| **DBLP** (dblp.org) | Check if a CS conference or journal is established and consistently indexed |
| **Scopus Source List** | Verify a journal is currently indexed in Scopus |
| **Web of Science Master Journal List** | Verify WoS/JCR inclusion |
| **Think. Check. Submit.** (thinkchecksubmit.org) | Checklist for evaluating a journal before submitting |
| **Think. Check. Attend.** (thinkcheckattend.org) | Same, for conferences |
| **Retraction Watch** | Track retracted papers and problematic publishers |
| **DOAJ** (doaj.org) | Directory of legitimate open-access journals |

### The grey area

Not every journal outside Scopus or WoS is predatory, and not every indexed journal is trustworthy. New legitimate journals take time to be indexed. Regional journals serving local needs may never seek international indexing but still conduct honest peer review. The key question is always: **is the peer review genuine?**

For students at ICS UPLB, a practical rule of thumb is to check with your adviser before submitting to any venue that arrived via unsolicited email, is not in DBLP (for CS), and charges an APC.

---

## 14. Interdisciplinary and Multidisciplinary Publications

As CS increasingly intersects with other fields — biology, medicine, social science, education, economics, law — researchers need to understand how cross-disciplinary work is published, evaluated, and indexed differently from purely CS output.

### Definitions

**Multidisciplinary** research draws on methods or knowledge from several fields but each discipline contributes relatively independently. A paper might apply a machine learning method to a medical dataset without deeply integrating the two fields' theoretical frameworks.

**Interdisciplinary** research integrates concepts, methods, or theories from two or more fields into a genuinely unified approach — the result could not have been produced within any single discipline alone. Examples include computational biology, human-computer interaction (HCI), and natural language processing applied to linguistics.

**Transdisciplinary** research goes further, involving non-academic stakeholders (government, communities, industry) alongside academics to address real-world problems. Less common in CS publishing but increasingly relevant in applied AI and ICT-for-development work.

### Where interdisciplinary CS work gets published

Depending on the application domain, a CS paper may be submitted to venues outside the traditional CS canon:

| Domain | Example venues |
|---|---|
| Bioinformatics / Computational biology | *Bioinformatics* (Oxford), *PLOS Computational Biology*, RECOMB |
| Health informatics / Medical AI | *Journal of Biomedical Informatics*, AMIA, *npj Digital Medicine* |
| CS education | *ACM TOCE*, SIGCSE, *Computers & Education* |
| Human-computer interaction | *ACM CHI*, *IJHCS*, *ACM TOCHI* |
| Computational social science | *ICWSM*, *Social Networks*, *EPJ Data Science* |
| Environmental / climate informatics | *Environmental Modelling & Software*, NeurIPS climate workshops |
| Legal informatics / AI & law | *Artificial Intelligence and Law*, JURIX |
| ICT for development (ICT4D) | *ICTD*, *Information Technologies & International Development* |

### Publication norms differ across fields

This matters because indexing, peer review standards, authorship conventions, and prestige hierarchies vary significantly between disciplines.

**Authorship order** — In CS, author order is typically meaningful (first author did the most work; last author is often the senior/supervising researcher). In biology and medicine, authorship conventions differ: the last position is the most senior, and middle positions are harder to interpret. A CS researcher publishing in a medical journal should be aware that evaluators from their home department may read author position differently.

**Review timelines** — CS conference review cycles run in weeks to a few months. Journals in medicine, social science, or education often take six months to over a year for a decision. A student targeting a health informatics journal should plan accordingly.

**Prestige signals** — Impact Factor and journal ranking matter more in medicine and social science than in CS, where top conferences can outrank many journals. If a CS researcher publishes in a high-IF medical journal, that may look different to a CS promotion committee than to a medical one.

**Indexing** — A venue indexed in PubMed (medicine) or ERIC (education) but not in DBLP or Scopus may still be a legitimate, respected publication in its own field. The absence from DBLP is not a warning sign for non-CS venues.

### For ICS researchers

Interdisciplinary publishing is actively encouraged but requires deliberate preparation:

- **Choose the right venue for the intended audience.** A paper on AI for rice disease detection could go to a CS venue (algorithm contribution) or an agriculture/bioinformatics venue (application contribution). The framing and emphasis should match.
- **Understand the home department's counting rules.** CHED and UPLB promotion guidelines may weight publications differently depending on whether the journal is indexed, which index, and in which field. Clarify this with your department before submitting.
- **Co-authorship with domain experts is normal and expected.** An interdisciplinary paper co-authored with a biologist, physician, or social scientist is stronger, not weaker — but ensure BibTeX records capture all authors correctly.
- **The BibTeX entry type does not change.** A journal article in a health informatics journal is still `@article`; a paper at a CS education conference is still `@inproceedings`. What changes is the `journal` or `booktitle` field and the indexing database where it appears.

---



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

*Guide prepared for ICS UPLB. Based on common CS publishing conventions, BibTeX standard entry types, and established practices in academic indexing and open access publishing.*
