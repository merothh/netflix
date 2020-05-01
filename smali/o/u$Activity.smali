.class public final Lo/u$Activity;
.super Lo/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/u<",
        "Landroid/app/Activity;",
        "Lo/u$Application;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lo/u$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lo/u$Activity;

    invoke-direct {v0}, Lo/u$Activity;-><init>()V

    sput-object v0, Lo/u$Activity;->e:Lo/u$Activity;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "LolopiFromActivity"

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, v0, v1}, Lo/u;-><init>(Ljava/lang/String;Lo/amc;)V

    return-void
.end method
