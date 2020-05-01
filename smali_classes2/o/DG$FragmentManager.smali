.class public final Lo/DG$FragmentManager;
.super Lo/DG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FragmentManager"
.end annotation


# static fields
.field public static final b:Lo/DG$FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lo/DG$FragmentManager;

    invoke-direct {v0}, Lo/DG$FragmentManager;-><init>()V

    sput-object v0, Lo/DG$FragmentManager;->b:Lo/DG$FragmentManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0}, Lo/DG;-><init>(Lo/amc;)V

    return-void
.end method
