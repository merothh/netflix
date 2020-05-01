.class public final Lo/UU$FragmentManager;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FragmentManager"
.end annotation


# static fields
.field public static final a:Lo/UU$FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lo/UU$FragmentManager;

    invoke-direct {v0}, Lo/UU$FragmentManager;-><init>()V

    sput-object v0, Lo/UU$FragmentManager;->a:Lo/UU$FragmentManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method
