package fr.ocr.escalade.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import fr.ocr.escalade.model.Site;
import fr.ocr.escalade.service.SiteService;

@Component
public class SiteValidator implements Validator {
    @Autowired
    private SiteService siteService;

    @Override
    public boolean supports(Class<?> aClass) {
        return Site.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
    	Site site = (Site) o;

    	   // Check the fields of SiteInfo.
        // (See more in property file: messages/validator.properties)
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nom", "NotEmpty.userForm.nom");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "region", "NotEmpty.userForm.region");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "NotEmpty.userForm.description");
    
    }
}
