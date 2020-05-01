.class public final Lo/Ci;
.super Landroid/content/ContextWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ci$Activity;,
        Lo/Ci$StateListAnimator;,
        Lo/Ci$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/Ci$ActionBar;


# instance fields
.field private final e:Lo/Cg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Ci$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Ci$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Ci;->b:Lo/Ci$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/Cg;)V
    .locals 1

    const-string v0, "base"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badTokenListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/Ci;->e:Lo/Cg;

    return-void
.end method

.method public static final synthetic a(Lo/Ci;)Lo/Cg;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/Ci;->e:Lo/Cg;

    return-object p0
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 3

    .line 27
    new-instance v0, Lo/Ci$Activity;

    invoke-virtual {p0}, Lo/Ci;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "baseContext"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "baseContext.applicationContext"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lo/Ci$Activity;-><init>(Lo/Ci;Landroid/content/Context;)V

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method
