.class LFormular;
.super Ljava/lang/Object;
.source "einsteinSteps.java"


# instance fields
.field divisor:I

.field remainder:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput v0, p0, LFormular;->divisor:I

    .line 148
    iput v0, p0, LFormular;->remainder:I

    .line 149
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p1, p0, LFormular;->divisor:I

    .line 142
    iput p2, p0, LFormular;->remainder:I

    .line 143
    return-void
.end method


# virtual methods
.method public setDivisorAndRemainder(II)V
    .registers 3

    .prologue
    .line 152
    iput p1, p0, LFormular;->divisor:I

    .line 153
    iput p2, p0, LFormular;->remainder:I

    .line 154
    return-void
.end method
