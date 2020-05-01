.class public final Lo/u$SharedElementCallback;
.super Lo/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedElementCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/u<",
        "Landroid/app/Activity;",
        "Lo/u$Dialog$TaskDescription;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/u$SharedElementCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lo/u$SharedElementCallback;

    invoke-direct {v0}, Lo/u$SharedElementCallback;-><init>()V

    sput-object v0, Lo/u$SharedElementCallback;->a:Lo/u$SharedElementCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "PlayerUIGetResult"

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, v0, v1}, Lo/u;-><init>(Ljava/lang/String;Lo/amc;)V

    return-void
.end method
