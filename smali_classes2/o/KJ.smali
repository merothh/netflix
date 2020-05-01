.class Lo/KJ;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final a:Lo/KJ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/KJ;

    invoke-direct {v0}, Lo/KJ;-><init>()V

    sput-object v0, Lo/KJ;->a:Lo/KJ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lo/NfcEvent$StateListAnimator;

    invoke-static {p1}, Lo/KL;->a(Lo/NfcEvent$StateListAnimator;)V

    return-void
.end method
