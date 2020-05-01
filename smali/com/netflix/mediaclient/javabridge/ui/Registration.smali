.class public interface abstract Lcom/netflix/mediaclient/javabridge/ui/Registration;
.super Ljava/lang/Object;
.source "Registration.java"


# static fields
.field public static final EVENT_activate:Ljava/lang/String; = "activate"

.field public static final EVENT_activateComplete:Ljava/lang/String; = "activateComplete"

.field public static final EVENT_bind:Ljava/lang/String; = "bind"

.field public static final EVENT_deactivated:Ljava/lang/String; = "deactivated"

.field public static final NAME:Ljava/lang/String; = "registration"

.field public static final PATH:Ljava/lang/String; = "nrdp.registration"


# virtual methods
.method public abstract addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
.end method

.method public abstract createDeviceAccount(Lcom/netflix/mediaclient/javabridge/ui/Callback;)V
.end method

.method public abstract deactivate(Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;Lcom/netflix/mediaclient/javabridge/ui/Callback;)V
.end method

.method public abstract deactivateAll(Lcom/netflix/mediaclient/javabridge/ui/Callback;)V
.end method

.method public abstract emailActivate(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract esnMigration()V
.end method

.method public abstract getActivationTokens()Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;
.end method

.method public abstract getCurrentDeviceAccount()Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;
.end method

.method public abstract getDeviceAccounts()[Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;
.end method

.method public abstract getDeviceTokens()V
.end method

.method public abstract getUILanguages()[Ljava/lang/String;
.end method

.method public abstract isRegistered()Z
.end method

.method public abstract massDeactivationCheck()V
.end method

.method public abstract ping()V
.end method

.method public abstract removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
.end method

.method public abstract selectDeviceAccount(Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;Lcom/netflix/mediaclient/javabridge/ui/Callback;)V
.end method

.method public abstract setActivationTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;)V
.end method

.method public abstract setUILanguages([Ljava/lang/String;)V
.end method

.method public abstract tokenActivate(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;)V
.end method

.method public abstract unselectDeviceAccount(Lcom/netflix/mediaclient/javabridge/ui/Callback;)V
.end method
