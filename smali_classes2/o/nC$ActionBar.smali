.class Lo/nC$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Lo/D;

.field private final b:Lo/nA;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/nA;Lo/D;)V
    .locals 0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p1, p0, Lo/nC$ActionBar;->d:Ljava/lang/String;

    .line 482
    iput-object p2, p0, Lo/nC$ActionBar;->b:Lo/nA;

    .line 483
    iput-object p3, p0, Lo/nC$ActionBar;->a:Lo/D;

    return-void
.end method

.method static synthetic a(Lo/nC$ActionBar;)Lo/nA;
    .locals 0

    .line 475
    iget-object p0, p0, Lo/nC$ActionBar;->b:Lo/nA;

    return-object p0
.end method

.method static synthetic c(Lo/nC$ActionBar;)Lo/D;
    .locals 0

    .line 475
    iget-object p0, p0, Lo/nC$ActionBar;->a:Lo/D;

    return-object p0
.end method

.method static synthetic e(Lo/nC$ActionBar;)Ljava/lang/String;
    .locals 0

    .line 475
    iget-object p0, p0, Lo/nC$ActionBar;->d:Ljava/lang/String;

    return-object p0
.end method
