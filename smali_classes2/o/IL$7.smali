.class Lo/IL$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MultiAutoCompleteTextView$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/IL;


# direct methods
.method constructor <init>(Lo/IL;)V
    .locals 0

    .line 1180
    iput-object p1, p0, Lo/IL$7;->d:Lo/IL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    .line 1189
    iget-object v0, p0, Lo/IL$7;->d:Lo/IL;

    invoke-static {v0, p1}, Lo/IL;->e(Lo/IL;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic a(Lo/AS;)V
    .locals 1

    .line 1194
    iget-object v0, p0, Lo/IL$7;->d:Lo/IL;

    invoke-static {v0, p1}, Lo/IL;->a(Lo/IL;Lo/AS;)V

    return-void
.end method

.method static synthetic b(Lo/IL$7;Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1}, Lo/IL$7;->a(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lo/IL$7;Lo/AS;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/IL$7;->a(Lo/AS;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/view/View;
    .locals 7

    .line 1183
    new-instance v6, Lo/Jb;

    .line 1184
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->cg:I

    iget-object p1, p0, Lo/IL$7;->d:Lo/IL;

    .line 1186
    invoke-virtual {p1}, Lo/IL;->x()I

    move-result v3

    new-instance v4, Lo/IY;

    invoke-direct {v4, p0}, Lo/IY;-><init>(Lo/IL$7;)V

    new-instance v5, Lo/IW;

    invoke-direct {v5, p0}, Lo/IW;-><init>(Lo/IL$7;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/Jb;-><init>(Landroid/content/Context;IILo/alA;Lo/Du$Activity;)V

    return-object v6
.end method
