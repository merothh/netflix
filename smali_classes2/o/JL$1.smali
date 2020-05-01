.class Lo/JL$1;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JL;->d(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Dc<",
        "Lcom/netflix/mediaclient/android/app/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:Lo/JL;


# direct methods
.method constructor <init>(Lo/JL;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lo/JL$1;->b:Lo/JL;

    iput-object p3, p0, Lo/JL$1;->a:Ljava/lang/Long;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lo/JL$1;->b:Lo/JL;

    iget-object v1, p0, Lo/JL$1;->a:Ljava/lang/Long;

    invoke-static {v0, p1, v1}, Lo/JL;->d(Lo/JL;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/Long;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 172
    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p0, p1}, Lo/JL$1;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
