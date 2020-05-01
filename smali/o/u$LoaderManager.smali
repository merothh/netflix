.class public final Lo/u$LoaderManager;
.super Lo/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoaderManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/u<",
        "Landroidx/fragment/app/Fragment;",
        "Lo/u$Application;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lo/u$LoaderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lo/u$LoaderManager;

    invoke-direct {v0}, Lo/u$LoaderManager;-><init>()V

    sput-object v0, Lo/u$LoaderManager;->e:Lo/u$LoaderManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "LolopiFromFragment"

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, v0, v1}, Lo/u;-><init>(Ljava/lang/String;Lo/amc;)V

    return-void
.end method
