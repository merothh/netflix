.class Lo/NullVibrator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/ParcelFormatException$Activity;

.field private final c:Lo/PatternMatcher;


# direct methods
.method public constructor <init>(Lo/ParcelFormatException$Activity;Lo/PatternMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/NullVibrator;->a:Lo/ParcelFormatException$Activity;

    iput-object p2, p0, Lo/NullVibrator;->c:Lo/PatternMatcher;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/NullVibrator;->a:Lo/ParcelFormatException$Activity;

    iget-object v1, p0, Lo/NullVibrator;->c:Lo/PatternMatcher;

    invoke-static {v0, v1}, Lo/ParcelFormatException$Activity;->c(Lo/ParcelFormatException$Activity;Lo/PatternMatcher;)V

    return-void
.end method
