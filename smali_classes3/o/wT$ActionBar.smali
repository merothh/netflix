.class public Lo/wT$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/wT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ActionBar"
.end annotation


# instance fields
.field private cdnid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cdnid"
    .end annotation
.end field

.field private serverUse:[Lo/wT$StateListAnimator;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serveruse"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/tH$LoaderManager;)V
    .locals 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iget-object v0, p1, Lo/tH$LoaderManager;->d:Ljava/lang/String;

    iput-object v0, p0, Lo/wT$ActionBar;->cdnid:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Lo/tH$LoaderManager;->b:[Lo/tH$SharedElementCallback;

    array-length v0, v0

    new-array v0, v0, [Lo/wT$StateListAnimator;

    iput-object v0, p0, Lo/wT$ActionBar;->serverUse:[Lo/wT$StateListAnimator;

    const/4 v0, 0x0

    .line 99
    :goto_0
    iget-object v1, p1, Lo/tH$LoaderManager;->b:[Lo/tH$SharedElementCallback;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v1, p0, Lo/wT$ActionBar;->serverUse:[Lo/wT$StateListAnimator;

    new-instance v2, Lo/wT$StateListAnimator;

    iget-object v3, p1, Lo/tH$LoaderManager;->b:[Lo/tH$SharedElementCallback;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lo/wT$StateListAnimator;-><init>(Lo/tH$SharedElementCallback;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
