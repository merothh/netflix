.class public final Lo/FindAddress$ActionBar;
.super Lo/FindAddress;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FindAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# static fields
.field public static final a:Lo/FindAddress$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/FindAddress$ActionBar;

    invoke-direct {v0}, Lo/FindAddress$ActionBar;-><init>()V

    sput-object v0, Lo/FindAddress$ActionBar;->a:Lo/FindAddress$ActionBar;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lo/FindAddress;-><init>(Lo/amc;)V

    return-void
.end method
