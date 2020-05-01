.class Lo/Qo;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final d:Lo/Qn$TaskDescription;


# direct methods
.method public constructor <init>(Lo/Qn$TaskDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Qo;->d:Lo/Qn$TaskDescription;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/Qo;->d:Lo/Qn$TaskDescription;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lo/Qn;->d(Lo/Qn$TaskDescription;Ljava/lang/Throwable;)V

    return-void
.end method
