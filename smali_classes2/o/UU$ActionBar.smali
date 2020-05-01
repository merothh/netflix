.class public final Lo/UU$ActionBar;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# static fields
.field public static final d:Lo/UU$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lo/UU$ActionBar;

    invoke-direct {v0}, Lo/UU$ActionBar;-><init>()V

    sput-object v0, Lo/UU$ActionBar;->d:Lo/UU$ActionBar;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method
