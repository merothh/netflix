.class public interface abstract Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;
.super Ljava/lang/Object;
.source "MdxController.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/Mdx;


# virtual methods
.method public abstract getDiscovery()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/DiscoveryController;
.end method

.method public abstract getPairing()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/PairingController;
.end method

.method public abstract getSession()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/SessionController;
.end method

.method public abstract pingNccp()V
.end method

.method public abstract removePropertyUpdateListener()V
.end method

.method public abstract setPropertyUpdateListener(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController$PropertyUpdateListener;)V
.end method
