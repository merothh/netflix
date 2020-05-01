.class public final Lo/AppWidgetHost$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field static final a:I


# instance fields
.field b:Lo/AppWidgetHost$TaskDescription;

.field c:F

.field d:Landroid/app/ActivityManager;

.field final e:Landroid/content/Context;

.field g:F

.field h:I

.field i:F

.field j:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lo/AppWidgetHost$Application;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 159
    iput v0, p0, Lo/AppWidgetHost$Application;->c:F

    .line 160
    sget v0, Lo/AppWidgetHost$Application;->a:I

    int-to-float v0, v0

    iput v0, p0, Lo/AppWidgetHost$Application;->i:F

    const v0, 0x3ecccccd    # 0.4f

    .line 161
    iput v0, p0, Lo/AppWidgetHost$Application;->j:F

    const v0, 0x3ea8f5c3    # 0.33f

    .line 162
    iput v0, p0, Lo/AppWidgetHost$Application;->g:F

    const/high16 v0, 0x400000

    .line 163
    iput v0, p0, Lo/AppWidgetHost$Application;->h:I

    .line 166
    iput-object p1, p0, Lo/AppWidgetHost$Application;->e:Landroid/content/Context;

    const-string v0, "activity"

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lo/AppWidgetHost$Application;->d:Landroid/app/ActivityManager;

    .line 169
    new-instance v0, Lo/AppWidgetHost$Activity;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/AppWidgetHost$Activity;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lo/AppWidgetHost$Application;->b:Lo/AppWidgetHost$TaskDescription;

    .line 176
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lo/AppWidgetHost$Application;->d:Landroid/app/ActivityManager;

    invoke-static {p1}, Lo/AppWidgetHost;->b(Landroid/app/ActivityManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 177
    iput p1, p0, Lo/AppWidgetHost$Application;->i:F

    :cond_0
    return-void
.end method


# virtual methods
.method public c()Lo/AppWidgetHost;
    .locals 1

    .line 260
    new-instance v0, Lo/AppWidgetHost;

    invoke-direct {v0, p0}, Lo/AppWidgetHost;-><init>(Lo/AppWidgetHost$Application;)V

    return-object v0
.end method
