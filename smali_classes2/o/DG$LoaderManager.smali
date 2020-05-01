.class public final Lo/DG$LoaderManager;
.super Lo/DG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoaderManager"
.end annotation


# static fields
.field public static final d:Lo/DG$LoaderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lo/DG$LoaderManager;

    invoke-direct {v0}, Lo/DG$LoaderManager;-><init>()V

    sput-object v0, Lo/DG$LoaderManager;->d:Lo/DG$LoaderManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lo/DG;-><init>(Lo/amc;)V

    return-void
.end method
