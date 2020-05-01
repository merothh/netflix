.class Lo/Animation$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Animation$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Animation;->a([Lo/DexFile$Activity;I)Lo/DexFile$Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/Animation$TaskDescription<",
        "Lo/DexFile$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/Animation;


# direct methods
.method constructor <init>(Lo/Animation;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lo/Animation$2;->e:Lo/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/DexFile$Activity;)Z
    .locals 0

    .line 107
    invoke-virtual {p1}, Lo/DexFile$Activity;->c()Z

    move-result p1

    return p1
.end method

.method public synthetic d(Ljava/lang/Object;)Z
    .locals 0

    .line 99
    check-cast p1, Lo/DexFile$Activity;

    invoke-virtual {p0, p1}, Lo/Animation$2;->c(Lo/DexFile$Activity;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;)I
    .locals 0

    .line 99
    check-cast p1, Lo/DexFile$Activity;

    invoke-virtual {p0, p1}, Lo/Animation$2;->e(Lo/DexFile$Activity;)I

    move-result p1

    return p1
.end method

.method public e(Lo/DexFile$Activity;)I
    .locals 0

    .line 102
    invoke-virtual {p1}, Lo/DexFile$Activity;->b()I

    move-result p1

    return p1
.end method
