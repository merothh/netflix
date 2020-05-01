.class public interface abstract Lo/FullBackup;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract c(Ljava/lang/Object;Lo/FullBackupAgent;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/FullBackupAgent;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/Slice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/Slice<",
            "TZ;>;"
        }
    .end annotation
.end method
