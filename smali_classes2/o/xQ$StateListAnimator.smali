.class abstract Lo/xQ$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aeL$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final b:Lo/aeL;

.field private final e:Lo/xQ$ActionBar;


# direct methods
.method public constructor <init>(Lo/aeL;Lo/xQ$ActionBar;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lo/xQ$StateListAnimator;->e:Lo/xQ$ActionBar;

    .line 115
    iput-object p1, p0, Lo/xQ$StateListAnimator;->b:Lo/aeL;

    return-void
.end method


# virtual methods
.method public a()Lo/aeL;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/xQ$StateListAnimator;->b:Lo/aeL;

    return-object v0
.end method

.method public b()Lo/xQ$ActionBar;
    .locals 1

    .line 119
    iget-object v0, p0, Lo/xQ$StateListAnimator;->e:Lo/xQ$ActionBar;

    return-object v0
.end method
