.class public final Lo/u$FragmentManager;
.super Lo/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FragmentManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/u$FragmentManager$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/u<",
        "Landroid/content/Context;",
        "Lo/u$FragmentManager$Activity;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/u$FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lo/u$FragmentManager;

    invoke-direct {v0}, Lo/u$FragmentManager;-><init>()V

    sput-object v0, Lo/u$FragmentManager;->a:Lo/u$FragmentManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "PlayerUIFromAnywhere"

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, v0, v1}, Lo/u;-><init>(Ljava/lang/String;Lo/amc;)V

    return-void
.end method
