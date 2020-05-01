.class public final Lo/aa;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aa$TaskDescription;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final d:Lo/aa$TaskDescription;


# instance fields
.field private final a:Lo/ae;

.field private final b:Lo/V;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aa$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aa$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/aa;->d:Lo/aa$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lo/ae;

    invoke-direct {v0}, Lo/ae;-><init>()V

    iput-object v0, p0, Lo/aa;->a:Lo/ae;

    .line 13
    new-instance v0, Lo/V;

    iget-object v1, p0, Lo/aa;->a:Lo/ae;

    invoke-direct {v0, v1}, Lo/V;-><init>(Lo/ae;)V

    iput-object v0, p0, Lo/aa;->b:Lo/V;

    return-void
.end method
