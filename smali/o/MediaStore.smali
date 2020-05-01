.class public final Lo/MediaStore;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaStore$StateListAnimator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/google/gson/TypeAdapterFactory;
    .locals 1

    .line 19
    new-instance v0, Lo/MediaStore$StateListAnimator;

    invoke-direct {v0}, Lo/MediaStore$StateListAnimator;-><init>()V

    return-object v0
.end method
