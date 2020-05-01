.class public final Lo/mW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/mR;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/mW$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lo/mW$StateListAnimator;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/mW$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/mW$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/mW;->a:Lo/mW$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "command"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/mW;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 12
    iget-object v2, p0, Lo/mW;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "UnknownCommand"

    const-string v3, "Received not supported command %s"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0
.end method
