.class public final Lo/u$TaskStackBuilder;
.super Lo/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskStackBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/u<",
        "Landroid/content/Context;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/u$TaskStackBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Lo/u$TaskStackBuilder;

    invoke-direct {v0}, Lo/u$TaskStackBuilder;-><init>()V

    sput-object v0, Lo/u$TaskStackBuilder;->a:Lo/u$TaskStackBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "SearchView"

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0, v0, v1}, Lo/u;-><init>(Ljava/lang/String;Lo/amc;)V

    return-void
.end method
