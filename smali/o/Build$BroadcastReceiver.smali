.class public Lo/Build$BroadcastReceiver;
.super Lo/Build;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastReceiver"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lo/Build$BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v2, v0}, Lo/Build$BroadcastReceiver;-><init>(ZLjava/lang/Class;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class<",
            "+",
            "Lo/Build$BroadcastReceiver;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v0}, Lo/Build;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/Build$BroadcastReceiver;->a:Z

    iput-object p2, p0, Lo/Build$BroadcastReceiver;->b:Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Class;ILo/amc;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 75
    check-cast p2, Ljava/lang/Class;

    :cond_1
    invoke-direct {p0, p1, p2}, Lo/Build$BroadcastReceiver;-><init>(ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lo/Build$BroadcastReceiver;->a:Z

    return v0
.end method

.method public final i()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lo/Build$BroadcastReceiver;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lo/Build$BroadcastReceiver;->b:Ljava/lang/Class;

    return-object v0
.end method
