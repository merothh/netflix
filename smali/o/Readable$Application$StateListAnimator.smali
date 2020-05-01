.class public final Lo/Readable$Application$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Readable$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "StateListAnimator"
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public final e:Lo/Object$LoaderManager;


# direct methods
.method public constructor <init>(Lo/Object$LoaderManager;Ljava/lang/Object;)V
    .locals 0

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    iput-object p1, p0, Lo/Readable$Application$StateListAnimator;->e:Lo/Object$LoaderManager;

    .line 707
    iput-object p2, p0, Lo/Readable$Application$StateListAnimator;->b:Ljava/lang/Object;

    return-void
.end method
