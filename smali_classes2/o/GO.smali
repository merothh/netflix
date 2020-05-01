.class public final Lo/GO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GO$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/GO$ActionBar;


# instance fields
.field private final a:Z

.field private final c:Z

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lo/CookieSyncManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/GO$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/GO$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/GO;->b:Lo/GO$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lo/GO;->a:Z

    .line 98
    invoke-static {}, Lo/adq;->d()Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lo/GO;->c:Z

    .line 104
    const-class v0, Lo/GH;

    iput-object v0, p0, Lo/GO;->e:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lo/GO;->c:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lo/GO;->a:Z

    return v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lo/CookieSyncManager;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lo/GO;->e:Ljava/lang/Class;

    return-object v0
.end method

.method public d()Lo/TransactionTracker;
    .locals 4

    .line 63
    sget-object v0, Lo/eL;->d:Lo/eL$TaskDescription;

    invoke-virtual {v0}, Lo/eL$TaskDescription;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lo/GS$Fragment;->s:I

    goto/16 :goto_0

    .line 64
    :cond_0
    sget-object v0, Lo/eL;->d:Lo/eL$TaskDescription;

    invoke-virtual {v0}, Lo/eL$TaskDescription;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget v0, Lo/GS$Fragment;->p:I

    goto/16 :goto_0

    .line 65
    :cond_1
    sget-object v0, Lo/eL;->d:Lo/eL$TaskDescription;

    invoke-virtual {v0}, Lo/eL$TaskDescription;->b()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    sget v0, Lo/GS$Fragment;->r:I

    goto/16 :goto_0

    .line 66
    :cond_2
    sget-object v0, Lo/eL;->d:Lo/eL$TaskDescription;

    invoke-virtual {v0}, Lo/eL$TaskDescription;->b()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    sget v0, Lo/GS$Fragment;->t:I

    goto :goto_0

    .line 67
    :cond_3
    sget-object v0, Lo/eL;->d:Lo/eL$TaskDescription;

    invoke-virtual {v0}, Lo/eL$TaskDescription;->b()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    sget v0, Lo/GS$Fragment;->w:I

    goto :goto_0

    .line 68
    :cond_4
    sget-object v0, Lo/eL;->d:Lo/eL$TaskDescription;

    invoke-virtual {v0}, Lo/eL$TaskDescription;->b()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_5

    sget v0, Lo/GS$Fragment;->q:I

    goto :goto_0

    .line 69
    :cond_5
    sget-object v0, Lo/eL;->d:Lo/eL$TaskDescription;

    invoke-virtual {v0}, Lo/eL$TaskDescription;->b()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_6

    sget v0, Lo/GS$Fragment;->y:I

    goto :goto_0

    .line 70
    :cond_6
    sget-object v0, Lo/eL;->d:Lo/eL$TaskDescription;

    invoke-virtual {v0}, Lo/eL$TaskDescription;->b()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_7

    sget v0, Lo/GS$Fragment;->v:I

    goto :goto_0

    .line 72
    :cond_7
    sget-object v0, Lo/eu;->b:Lo/eu$ActionBar;

    invoke-virtual {v0}, Lo/eu$ActionBar;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lo/GS$Fragment;->s:I

    goto :goto_0

    .line 74
    :cond_8
    sget-object v0, Lo/eK;->e:Lo/eK$Application;

    invoke-virtual {v0}, Lo/eK$Application;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lo/GS$Fragment;->s:I

    goto :goto_0

    .line 78
    :cond_9
    sget-object v0, Lo/fn;->d:Lo/fn$TaskDescription;

    invoke-virtual {v0}, Lo/fn$TaskDescription;->d()I

    move-result v0

    if-ne v0, v2, :cond_a

    sget v0, Lo/GS$Fragment;->x:I

    goto :goto_0

    .line 79
    :cond_a
    sget-object v0, Lo/fn;->d:Lo/fn$TaskDescription;

    invoke-virtual {v0}, Lo/fn$TaskDescription;->d()I

    move-result v0

    if-ne v0, v1, :cond_b

    sget v0, Lo/GS$Fragment;->y:I

    goto :goto_0

    .line 81
    :cond_b
    sget v0, Lo/GS$Fragment;->n:I

    .line 84
    :goto_0
    sget v1, Lo/GS$Dialog;->z:I

    .line 85
    sget-object v2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 107
    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 85
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    sget v2, Lo/GS$Application;->i:I

    .line 83
    new-instance v3, Lo/TransactionTracker;

    invoke-direct {v3, v1, v0, v2}, Lo/TransactionTracker;-><init>(ILjava/lang/String;I)V

    return-object v3
.end method
