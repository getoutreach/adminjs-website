// TODO: load based on params
Ember.keys(define.registry).filter(function(e){return/\_test/.test(e)}).forEach(requireModule);