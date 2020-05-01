.class public final Lo/DG$ActionBar;
.super Lo/DG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# static fields
.field public static final e:Lo/DG$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lo/DG$ActionBar;

    invoke-direct {v0}, Lo/DG$ActionBar;-><init>()V

    sput-object v0, Lo/DG$ActionBar;->e:Lo/DG$ActionBar;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0}, Lo/DG;-><init>(Lo/amc;)V

    return-void
.end method
