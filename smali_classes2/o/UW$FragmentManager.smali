.class public final Lo/UW$FragmentManager;
.super Lo/UW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FragmentManager"
.end annotation


# static fields
.field public static final a:Lo/UW$FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 154
    new-instance v0, Lo/UW$FragmentManager;

    invoke-direct {v0}, Lo/UW$FragmentManager;-><init>()V

    sput-object v0, Lo/UW$FragmentManager;->a:Lo/UW$FragmentManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, v0}, Lo/UW;-><init>(Lo/amc;)V

    return-void
.end method
