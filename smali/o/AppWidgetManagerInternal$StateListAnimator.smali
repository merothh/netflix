.class public interface abstract Lo/AppWidgetManagerInternal$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AppWidgetManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateListAnimator"
.end annotation


# static fields
.field public static final a:Lo/AppWidgetManagerInternal$StateListAnimator;

.field public static final c:Lo/AppWidgetManagerInternal$StateListAnimator;

.field public static final d:Lo/AppWidgetManagerInternal$StateListAnimator;

.field public static final e:Lo/AppWidgetManagerInternal$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 374
    new-instance v0, Lo/AppWidgetManagerInternal$StateListAnimator$5;

    invoke-direct {v0}, Lo/AppWidgetManagerInternal$StateListAnimator$5;-><init>()V

    sput-object v0, Lo/AppWidgetManagerInternal$StateListAnimator;->a:Lo/AppWidgetManagerInternal$StateListAnimator;

    .line 383
    new-instance v0, Lo/AppWidgetManagerInternal$StateListAnimator$1;

    invoke-direct {v0}, Lo/AppWidgetManagerInternal$StateListAnimator$1;-><init>()V

    sput-object v0, Lo/AppWidgetManagerInternal$StateListAnimator;->c:Lo/AppWidgetManagerInternal$StateListAnimator;

    .line 396
    new-instance v0, Lo/AppWidgetManagerInternal$StateListAnimator$3;

    invoke-direct {v0}, Lo/AppWidgetManagerInternal$StateListAnimator$3;-><init>()V

    sput-object v0, Lo/AppWidgetManagerInternal$StateListAnimator;->d:Lo/AppWidgetManagerInternal$StateListAnimator;

    .line 406
    sget-object v0, Lo/AppWidgetManagerInternal$StateListAnimator;->c:Lo/AppWidgetManagerInternal$StateListAnimator;

    sput-object v0, Lo/AppWidgetManagerInternal$StateListAnimator;->e:Lo/AppWidgetManagerInternal$StateListAnimator;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method
