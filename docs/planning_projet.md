# 🗺️ Planning de Développement : SAP Intelligent Command Center

Ce document détaille les différentes phases de développement pour mener à bien le projet de bout en bout, en respectant l'architecture technique définie.

## 🚀 Phase 1 : Socle Backend & Modélisation (SAP ABAP & HANA)
*Objectif : Mettre en place les fondations de données et les processus métier de base.*
- [ ] **Modélisation de la base de données** : Création des tables spécifiques (Z) nécessaires (ex: pannes, suivi kilométrique).
- [ ] **Vues CDS & RAP** (`z_rap_cds`) : Développement des vues de type Data Definition, Cube et Query. Configuration du modèle RAP pour exposer les données analytiques.
- [ ] **Intégration BAPI (Core S/4HANA)** (`z_integration_bapi`) : Développement des modules fonctions pour la création de Purchase Orders (`BAPI_PO_CREATE1`) et la comptabilisation des factures (`BAPI_ACC_DOCUMENT_POST`).

## 🔌 Phase 2 : Connectivité, APIs & Intégration
*Objectif : Permettre aux systèmes externes (App mobile, Fichiers du Garage) de communiquer avec SAP.*
- [ ] **API OData / REST ICF** (`z_api_odata`) : Création, implémentation (DPC/MPC) et exposition des services OData pour le mobile et le dashboard.
- [ ] **Traitement EDI / IDoc Inbound** (`z_edi_idoc`) : Développement de la logique (Function Module Inbound) pour parser le fichier plat (ex: `sample_idoc_facture.txt`) et créer la facture logistique.

## ⚙️ Phase 3 : Workflow, Logique Métier & SAP GUI
*Objectif : Orchestrer les approbations, les envois de documents et l'interface classique pour les administrateurs.*
- [ ] **SAP Business Workflow** (`z_workflow`) : Configuration du workflow d'approbation (déclencheurs, tâches, règles de décision) et intégration avec l'application Fiori My Inbox.
- [ ] **Interface SAP GUI** (`z_module_pool`) : Développement du programme Dialog (SE51) permettant à l'Administrateur Logistique de gérer les données en direct sur le système classique.
- [ ] **Génération & Envoi PDF** (`z_adobe_forms`) : Conception du formulaire Adobe Forms (bon de commande/réparation) et développement du programme d'envoi automatique d'email via `CL_BCS`.

## 📱 Phase 4 : Frontend Mobile (React Native)
*Objectif : Fournir une interface simple, moderne et réactive aux chauffeurs.*
- [ ] **Structure & Navigation** : Configuration du projet (`mobile-app-driver`), de la navigation et des variables (`.env`).
- [ ] **Développement des Écrans** (`src/screens`) : Formulaires pour la saisie du kilométrage, et la déclaration des pannes.
- [ ] **Appels Services** (`src/services`) : Implémentation des requêtes HTTP (axios/fetch) vers les endpoints OData du backend SAP.

## 📊 Phase 5 : Tableau de Bord Analytique (Fiori Elements)
*Objectif : Offrir une vue consolidée et décisionnelle au Manager et au Directeur.*
- [ ] **Configuration du Projet** (`sap-fiori-dashboard`) : Initialisation de l'application Fiori Elements (Analytical List Page ou Overview Page).
- [ ] **Paramétrage des Annotations UI** (`webapp/annotations`) : Définition des métadonnées UI pour générer les graphiques (Coûts de maintenance via Donut chart, Statuts des pannes via Bar chart).
- [ ] **Test sur Launchpad Local** : Vérification du rendu et de l'interactivité des données via l'OData analytique.

## 🧪 Phase 6 : Tests End-to-End, Validation & Déploiement
*Objectif : S'assurer que tous les flux (de bout en bout) fonctionnent harmonieusement.*
- [ ] **Tests unitaires et APIs** : Utilisation de Postman (`api_postman_collection.json`) pour valider les endpoints OData et l'injection de fichiers.
- [ ] **Test de scénario complet** : (Chauffeur -> App Mobile -> Création Panne -> Workflow -> Approbation Manager -> Module BAPI -> Envoi Email Garage -> Fichier Facture -> IDoc -> Dashboard mis à jour).
- [ ] **Documentation Finale** : Finition du `README.md` et validation du document de design (`workflow_design.md`).
