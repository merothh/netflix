.class Lo/Editable;
.super Lo/InputType;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/InputType;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 29
    new-instance v0, Lo/Editable$1;

    invoke-direct {v0, p0}, Lo/Editable$1;-><init>(Lo/Editable;)V

    sput-object v0, Lo/TruncateAt;->a:Lo/TruncateAt$Activity;

    return-void
.end method
