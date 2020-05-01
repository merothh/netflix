.class public interface abstract Lo/ZygoteProcess;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DY$Activity;
.implements Lcom/netflix/mediaclient/acquisition/Binder_SignupNativeActivity$Injector;
.implements Lo/DateSorter$ActionBar;
.implements Lo/Ds$TaskDescription;
.implements Lo/Io$ActionBar;
.implements Lo/II$ActionBar;
.implements Lo/Jo$StateListAnimator;
.implements Lo/YL$TaskDescription;
.implements Lo/GA$Application;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZygoteProcess$ActionBar;
    }
.end annotation


# virtual methods
.method public abstract c()Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider<",
            "Lo/HealthStatsParceler$TaskDescription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e()Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider<",
            "Lo/HealthStatsWriter$TaskDescription;",
            ">;"
        }
    .end annotation
.end method
