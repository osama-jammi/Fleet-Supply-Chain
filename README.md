# SAP Intelligent Command Center 🚚

Bienvenue dans le dépôt du projet **SAP Intelligent Command Center**. Ce projet de bout en bout ("End-to-End") est conçu pour la gestion et le suivi d'une flotte de véhicules (Fleet & Supply Chain).

## 🎯 Objectif du Projet
Créer une architecture système complète permettant :
- Aux **chauffeurs** de déclarer des pannes et de suivre leur kilométrage via une **Application Mobile** (React Native).
- Au **système SAP** de centraliser les données, déclencher des workflows d'approbation et communiquer avec les garages partenaires (via EDI/IDoc et BAPI).
- Aux **managers** d'avoir une vue analytique et décisionnelle en temps réel grâce à un **Tableau de bord Fiori Elements**.

## 🏗️ Architecture Technique
Ce dépôt est divisé en plusieurs composants :
- `sap-backend-abap/` : Le cœur du système (Core S/4HANA). Modélisation des tables, Vues CDS, modèle RAP (RESTful Application Programming), et logique métier (BAPI, Workflow).
- `mobile-app-driver/` : Le frontend mobile développé en React Native pour les utilisateurs sur le terrain.
- `sap-fiori-dashboard/` : L'interface analytique pour les managers (SAP Fiori Elements).
- `docs/` : Documentation technique, spécifications, architecture et assets du projet.

## 🚀 État d'avancement
- **Phase 1 : Socle Backend & Modélisation (SAP ABAP & HANA)** 🟢 *(En cours/Terminé)*
  - Modélisation de la base de données (Tables Z)
  - Vues CDS (Core Data Services)
  - Configuration du modèle RAP

*Consultez le fichier `docs/planning_projet.md` pour le détail de toutes les phases de développement.*
