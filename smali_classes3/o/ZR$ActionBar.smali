.class public final Lo/ZR$ActionBar;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# static fields
.field public static final a:Lo/ZR$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lo/ZR$ActionBar;

    invoke-direct {v0}, Lo/ZR$ActionBar;-><init>()V

    sput-object v0, Lo/ZR$ActionBar;->a:Lo/ZR$ActionBar;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    return-void
.end method
