.class public final Lo/HwRemoteBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/HidlSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HwRemoteBinder$Activity;
    }
.end annotation


# static fields
.field public static final d:Lo/HwRemoteBinder$Activity;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Z

.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/HwRemoteBinder$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/HwRemoteBinder$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/HwRemoteBinder;->d:Lo/HwRemoteBinder$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/HwRemoteBinder;-><init>(Landroid/content/Context;Ljava/lang/String;ZILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/HwRemoteBinder;->e:Landroid/content/Context;

    iput-object p2, p0, Lo/HwRemoteBinder;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lo/HwRemoteBinder;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZILo/amc;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lo/HwRemoteBinder;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private final b()V
    .locals 3

    .line 43
    sget-object v0, Lo/HwRemoteBinder;->d:Lo/HwRemoteBinder$Activity;

    iget-object v1, p0, Lo/HwRemoteBinder;->e:Landroid/content/Context;

    invoke-static {v0, v1}, Lo/HwRemoteBinder$Activity;->d(Lo/HwRemoteBinder$Activity;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    invoke-direct {p0}, Lo/HwRemoteBinder;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final d()Ljava/lang/String;
    .locals 2

    .line 26
    sget-object v0, Lo/HwRemoteBinder;->d:Lo/HwRemoteBinder$Activity;

    iget-object v1, p0, Lo/HwRemoteBinder;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/HwRemoteBinder$Activity;->d(Lo/HwRemoteBinder$Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 28
    sget-object v0, Lo/HwRemoteBinder;->d:Lo/HwRemoteBinder$Activity;

    iget-object v1, p0, Lo/HwRemoteBinder;->e:Landroid/content/Context;

    iget-object v2, p0, Lo/HwRemoteBinder;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/HwRemoteBinder$Activity;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b(Lo/HwBlob;)V
    .locals 1

    const-string v0, "tooltip"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-boolean p1, p0, Lo/HwRemoteBinder;->c:Z

    if-eqz p1, :cond_0

    .line 32
    invoke-direct {p0}, Lo/HwRemoteBinder;->b()V

    :cond_0
    return-void
.end method

.method public e(Lo/HwBlob;)V
    .locals 1

    const-string v0, "tooltip"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-boolean p1, p0, Lo/HwRemoteBinder;->c:Z

    if-nez p1, :cond_0

    .line 38
    invoke-direct {p0}, Lo/HwRemoteBinder;->b()V

    :cond_0
    return-void
.end method
