.class public final Lo/FormatException$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FormatException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# static fields
.field static final synthetic d:Lo/FormatException$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lo/FormatException$ActionBar;

    invoke-direct {v0}, Lo/FormatException$ActionBar;-><init>()V

    sput-object v0, Lo/FormatException$ActionBar;->d:Lo/FormatException$ActionBar;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lo/FormatException;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lo/CellularBatteryStats;->e:Lo/CellularBatteryStats;

    const-class v1, Lo/FormatException$StateListAnimator;

    invoke-virtual {v0, p1, v1}, Lo/CellularBatteryStats;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FormatException$StateListAnimator;

    .line 26
    invoke-interface {p1}, Lo/FormatException$StateListAnimator;->c()Lo/FormatException;

    move-result-object p1

    return-object p1
.end method
