.class public final Lo/Tk$Activity;
.super Lo/Tk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Tk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# static fields
.field public static final a:Lo/Tk$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lo/Tk$Activity;

    invoke-direct {v0}, Lo/Tk$Activity;-><init>()V

    sput-object v0, Lo/Tk$Activity;->a:Lo/Tk$Activity;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lo/Tk;-><init>(Lo/amc;)V

    return-void
.end method
