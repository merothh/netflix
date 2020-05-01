.class public final Lo/UP$FragmentManager;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FragmentManager"
.end annotation


# static fields
.field public static final c:Lo/UP$FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lo/UP$FragmentManager;

    invoke-direct {v0}, Lo/UP$FragmentManager;-><init>()V

    sput-object v0, Lo/UP$FragmentManager;->c:Lo/UP$FragmentManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    return-void
.end method
