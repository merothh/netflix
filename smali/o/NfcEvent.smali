.class public final Lo/NfcEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/NfcEvent$Activity;,
        Lo/NfcEvent$StateListAnimator;,
        Lo/NfcEvent$Application;
    }
.end annotation


# static fields
.field public static final b:Lo/NfcEvent$Application;


# instance fields
.field private a:I

.field private c:Ljava/lang/String;

.field private d:Lo/Serializable;

.field private e:Landroidx/fragment/app/Fragment;

.field private h:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/NfcEvent$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/NfcEvent$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/NfcEvent;->b:Lo/NfcEvent$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lo/NfcEvent;-><init>()V

    return-void
.end method

.method public static final c(Lo/Serializable;)Lo/NfcEvent;
    .locals 1

    sget-object v0, Lo/NfcEvent;->b:Lo/NfcEvent$Application;

    invoke-virtual {v0, p0}, Lo/NfcEvent$Application;->d(Lo/Serializable;)Lo/NfcEvent;

    move-result-object p0

    return-object p0
.end method

.method private final d(Lo/Serializable;)Lo/NfcEvent;
    .locals 0

    .line 57
    iput-object p1, p0, Lo/NfcEvent;->d:Lo/Serializable;

    return-object p0
.end method

.method public static final synthetic e(Lo/NfcEvent;Lo/Serializable;)Lo/NfcEvent;
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lo/NfcEvent;->d(Lo/Serializable;)Lo/NfcEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)Lo/NfcEvent;
    .locals 0

    .line 74
    iput p1, p0, Lo/NfcEvent;->h:I

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lo/NfcEvent;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lo/NfcEvent;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c(I)Lo/NfcEvent;
    .locals 0

    .line 68
    iput p1, p0, Lo/NfcEvent;->a:I

    return-object p0
.end method

.method public final d()Lo/NfcEvent$Activity;
    .locals 8

    .line 89
    iget-object v1, p0, Lo/NfcEvent;->c:Ljava/lang/String;

    .line 90
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 94
    new-instance v7, Lo/NfcEvent$Activity;

    .line 96
    iget-object v2, p0, Lo/NfcEvent;->d:Lo/Serializable;

    .line 97
    iget-object v3, p0, Lo/NfcEvent;->e:Landroidx/fragment/app/Fragment;

    .line 98
    iget v4, p0, Lo/NfcEvent;->a:I

    .line 99
    iget v5, p0, Lo/NfcEvent;->h:I

    .line 100
    iget-boolean v6, p0, Lo/NfcEvent;->j:Z

    move-object v0, v7

    .line 94
    invoke-direct/range {v0 .. v6}, Lo/NfcEvent$Activity;-><init>(Ljava/lang/String;Lo/Serializable;Landroidx/fragment/app/Fragment;IIZ)V

    return-object v7

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final e(Z)Lo/NfcEvent;
    .locals 0

    .line 83
    iput-boolean p1, p0, Lo/NfcEvent;->j:Z

    return-object p0
.end method
