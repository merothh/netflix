.class public interface abstract Lo/PackageInstaller;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PackageInstaller$TaskDescription;,
        Lo/PackageInstaller$Activity;
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Lo/PackageInstaller$Activity;)J
.end method

.method public abstract c(Ljava/lang/String;)J
.end method

.method public abstract d()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lo/PackageInstaller$Activity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/Object;)Lo/PackageInstaller$TaskDescription;
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/Object;)Lo/InstantAppResolveInfo;
.end method

.method public abstract e()Z
.end method
