.class public final Lo/Tk$Application;
.super Lo/Tk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Tk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field public static final b:Lo/Tk$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lo/Tk$Application;

    invoke-direct {v0}, Lo/Tk$Application;-><init>()V

    sput-object v0, Lo/Tk$Application;->b:Lo/Tk$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lo/Tk;-><init>(Lo/amc;)V

    return-void
.end method
