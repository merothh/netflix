.class Lo/InternalValidator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lo/InternalTransformation;

.field private final e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/InternalTransformation;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/InternalValidator;->d:Lo/InternalTransformation;

    iput-object p2, p0, Lo/InternalValidator;->e:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/InternalValidator;->d:Lo/InternalTransformation;

    iget-object v1, p0, Lo/InternalValidator;->e:[Ljava/lang/String;

    invoke-static {v0, v1}, Lo/InternalTransformation;->a(Lo/InternalTransformation;[Ljava/lang/String;)V

    return-void
.end method
