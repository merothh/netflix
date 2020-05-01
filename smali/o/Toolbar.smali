.class public final Lo/Toolbar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Toolbar$TaskDescription;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static b(Lo/OnEditorActionListener;)Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/OnEditorActionListener<",
            "TT;>;)",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    new-instance v0, Lo/Toolbar$TaskDescription;

    invoke-direct {v0, p0}, Lo/Toolbar$TaskDescription;-><init>(Lo/OnEditorActionListener;)V

    return-object v0
.end method
