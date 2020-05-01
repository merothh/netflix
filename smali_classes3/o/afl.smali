.class final Lo/afl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UserInfo;


# instance fields
.field private final synthetic e:Lo/alB;


# direct methods
.method constructor <init>(Lo/alB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/afl;->e:Lo/alB;

    return-void
.end method


# virtual methods
.method public final synthetic d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/afl;->e:Lo/alB;

    invoke-interface {v0}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
