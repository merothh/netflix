.class public final Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/android/imageloader/api/BlurProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# static fields
.field static final synthetic c:Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;

    invoke-direct {v0}, Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;-><init>()V

    sput-object v0, Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;->c:Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Lcom/netflix/android/imageloader/api/BlurProcessor;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lo/CellularBatteryStats;->e:Lo/CellularBatteryStats;

    const-class v1, Lcom/netflix/android/imageloader/api/BlurProcessor$ActionBar;

    invoke-virtual {v0, p1, v1}, Lo/CellularBatteryStats;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/android/imageloader/api/BlurProcessor$ActionBar;

    invoke-interface {p1}, Lcom/netflix/android/imageloader/api/BlurProcessor$ActionBar;->a()Lcom/netflix/android/imageloader/api/BlurProcessor;

    move-result-object p1

    return-object p1
.end method
