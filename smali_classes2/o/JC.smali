.class Lo/JC;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final c:Lo/Jw;


# direct methods
.method public constructor <init>(Lo/Jw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/JC;->c:Lo/Jw;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/JC;->c:Lo/Jw;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lo/Jw;->a(Lo/Jw;Ljava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
