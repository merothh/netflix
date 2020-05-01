.class Lo/IY;
.super Ljava/lang/Object;

# interfaces
.implements Lo/alA;


# instance fields
.field private final c:Lo/IL$7;


# direct methods
.method public constructor <init>(Lo/IL$7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/IY;->c:Lo/IL$7;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/IY;->c:Lo/IL$7;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lo/IL$7;->b(Lo/IL$7;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
