module.exports.paper = function (paper)  {
	var res = paper.citation;
	if(paper.pubmed){
		res += '[PubMed ID: <a href="http://www.ncbi.nlm.nih.gov/pubmed/'+paper.pubmed+'">'+paper.pubmed+'</a>]&nbsp;';
	}
	if(paper.journal){
		res += '[<a href="'+paper.journal+'">Journal</a>]&nbsp;';	
	}
	return res;
};

module.exports.spliced_each = function(a, from, to, block) {
    var s = '';
    for(var i = from; i < to; ++i)
        s += block(a[i]);
    return s;
} ;
